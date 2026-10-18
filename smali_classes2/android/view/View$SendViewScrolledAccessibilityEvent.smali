.class Landroid/view/View$SendViewScrolledAccessibilityEvent;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendViewScrolledAccessibilityEvent"
.end annotation


# instance fields
.field public mDeltaX:I

.field public mDeltaY:I

.field public volatile mIsPending:Z

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 26878
    iput-object p1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .locals 0

    .line 26878
    invoke-direct {p0, p1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/view/View$SendViewScrolledAccessibilityEvent;)V
    .locals 0

    .line 26878
    invoke-direct {p0}, Landroid/view/View$SendViewScrolledAccessibilityEvent;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 26905
    iput-boolean v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 26906
    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    .line 26907
    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    return-void
.end method


# virtual methods
.method public post(II)V
    .locals 2

    .line 26884
    iget v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    .line 26885
    iget p1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    .line 26886
    iget-boolean p1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 26887
    iput-boolean p1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 26888
    iget-object p1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->this$0:Landroid/view/View;

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 26894
    iget-object v0, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    .line 26895
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 26897
    iget v1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaX:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollDeltaX(I)V

    .line 26898
    iget v1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mDeltaY:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollDeltaY(I)V

    .line 26899
    iget-object v1, p0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->this$0:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 26901
    :cond_0
    invoke-direct {p0}, Landroid/view/View$SendViewScrolledAccessibilityEvent;->reset()V

    return-void
.end method
