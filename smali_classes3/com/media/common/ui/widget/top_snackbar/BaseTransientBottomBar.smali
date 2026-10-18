.class public abstract Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$Behavior;,
        Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;,
        Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;,
        Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$OnLayoutChangeListener;,
        Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$Duration;,
        Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$ContentViewCallback;,
        Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0xfa

.field static final ANIMATION_FADE_DURATION:I = 0xb4

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field static final MSG_DISMISS:I = 0x1

.field static final MSG_SHOW:I

.field private static final USE_OFFSET_API:Z

.field static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field private final mContentViewCallback:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$ContentViewCallback;

.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field final mManagerCallback:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;

.field private final mTargetParent:Landroid/view/ViewGroup;

.field final mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$1;

    invoke-direct {v2}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$ContentViewCallback;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$ContentViewCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    new-instance v0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$3;

    invoke-direct {v0, p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$3;-><init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;)V

    iput-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 229
    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mTargetParent:Landroid/view/ViewGroup;

    .line 230
    iput-object p3, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mContentViewCallback:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$ContentViewCallback;

    .line 231
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    .line 233
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/media/common/ui/widget/top_snackbar/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 235
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 239
    sget p3, Lcom/media/common/ui/widget/R$layout;->design_layout_top_snackbar:I

    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mTargetParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 241
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1, p2}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->addView(Landroid/view/View;)V

    .line 243
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 245
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 249
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 250
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance p2, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$2;

    invoke-direct {p2, p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$2;-><init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 263
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    const-string p2, "accessibility"

    .line 264
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void

    .line 226
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Transient bottom bar must have non-null callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 223
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Transient bottom bar must have non-null content"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 220
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Transient bottom bar must have non-null parent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;)Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$ContentViewCallback;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mContentViewCallback:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$ContentViewCallback;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 48
    sget-boolean v0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    return v0
.end method

.method private animateViewOut(I)V
    .locals 6

    .line 546
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0xfa

    const/16 v3, 0xc

    if-lt v0, v3, :cond_0

    .line 547
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 548
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v3, 0x2

    .line 549
    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v5}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v5

    neg-int v5, v5

    aput v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 550
    sget-object v3, Lcom/media/common/ui/widget/top_snackbar/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 551
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 552
    new-instance v1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$10;

    invoke-direct {v1, p0, p1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$10;-><init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 563
    new-instance p1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$11;

    invoke-direct {p1, p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$11;-><init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 578
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/media/common/ui/widget/R$anim;->design_snackbar_out:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 582
    sget-object v3, Lcom/media/common/ui/widget/top_snackbar/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 583
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 584
    new-instance v1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$12;

    invoke-direct {v1, p0, p1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$12;-><init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 596
    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;
    .locals 1
    .param p1    # Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method animateViewIn()V
    .locals 7

    .line 484
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0xfa

    const/16 v3, 0xc

    if-lt v0, v3, :cond_1

    .line 485
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    .line 486
    sget-boolean v3, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    if-eqz v3, :cond_0

    .line 487
    iget-object v3, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v3, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v3, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 491
    :goto_0
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v4, 0x2

    .line 492
    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 493
    sget-object v4, Lcom/media/common/ui/widget/top_snackbar/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 494
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 495
    new-instance v1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$7;

    invoke-direct {v1, p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$7;-><init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 508
    new-instance v1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$8;

    invoke-direct {v1, p0, v0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$8;-><init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 523
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/media/common/ui/widget/R$anim;->design_snackbar_in:I

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 527
    sget-object v3, Lcom/media/common/ui/widget/top_snackbar/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 528
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 529
    new-instance v1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$9;

    invoke-direct {v1, p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$9;-><init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 541
    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x3

    .line 317
    invoke-virtual {p0, v0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    return-void
.end method

.method dispatchDismiss(I)V
    .locals 1

    .line 321
    invoke-static {}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->getInstance()Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;

    move-result-object v0

    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;

    invoke-virtual {v0, p0, p1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->dismiss(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;I)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 295
    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    .line 287
    iget p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mDuration:I

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 303
    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    return-object p0
.end method

.method final hideView(I)V
    .locals 1

    .line 601
    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 602
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->animateViewOut(I)V

    goto :goto_0

    .line 605
    :cond_0
    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->onViewHidden(I)V

    :goto_0
    return-void
.end method

.method public isShown()Z
    .locals 1

    .line 367
    invoke-static {}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->getInstance()Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;

    move-result-object v0

    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;

    invoke-virtual {v0, p0}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->isCurrent(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z

    move-result p0

    return p0
.end method

.method public isShownOrQueued()Z
    .locals 1

    .line 375
    invoke-static {}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->getInstance()Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;

    move-result-object v0

    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;

    invoke-virtual {v0, p0}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->isCurrentOrNext(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)Z

    move-result p0

    return p0
.end method

.method onViewHidden(I)V
    .locals 2

    .line 623
    invoke-static {}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->getInstance()Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->onDismissed(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)V

    .line 624
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 629
    iget-object v1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v1, p0, p1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 632
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    .line 638
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setVisibility(I)V

    .line 641
    :cond_1
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 642
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 643
    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method onViewShown()V
    .locals 2

    .line 610
    invoke-static {}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->getInstance()Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->onShown(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)V

    .line 611
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 616
    iget-object v1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v1, p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;->onShown(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;
    .locals 1
    .param p1    # Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    if-nez v0, :cond_1

    return-object p0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setDuration(I)Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 276
    iput p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mDuration:I

    return-object p0
.end method

.method shouldAnimate()Z
    .locals 0

    .line 651
    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public show()V
    .locals 2

    .line 310
    invoke-static {}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->getInstance()Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;

    move-result-object v0

    iget v1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mDuration:I

    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;

    invoke-virtual {v0, v1, p0}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->show(ILcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)V

    return-void
.end method

.method final showView()V
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 395
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 397
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 399
    new-instance v1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$Behavior;

    invoke-direct {v1, p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$Behavior;-><init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;)V

    const v2, 0x3dcccccd    # 0.1f

    .line 400
    invoke-virtual {v1, v2}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$Behavior;->setStartAlphaSwipeDistance(F)V

    const v2, 0x3f19999a    # 0.6f

    .line 401
    invoke-virtual {v1, v2}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$Behavior;->setEndAlphaSwipeDistance(F)V

    const/4 v2, 0x0

    .line 402
    invoke-virtual {v1, v2}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$Behavior;->setSwipeDirection(I)V

    .line 403
    new-instance v2, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$4;

    invoke-direct {v2, p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$4;-><init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$Behavior;->setListener(Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;)V

    .line 426
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    const/16 v1, 0x50

    .line 428
    iput v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mTargetParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$5;

    invoke-direct {v1, p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$5;-><init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 456
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 457
    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->animateViewIn()V

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->onViewShown()V

    goto :goto_0

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$6;

    invoke-direct {v1, p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$6;-><init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method
