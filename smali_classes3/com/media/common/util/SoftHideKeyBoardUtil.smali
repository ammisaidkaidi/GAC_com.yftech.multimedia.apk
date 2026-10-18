.class public Lcom/media/common/util/SoftHideKeyBoardUtil;
.super Ljava/lang/Object;
.source "SoftHideKeyBoardUtil.java"


# instance fields
.field private contentHeight:I

.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private isfirst:Z

.field private mChildOfContent:Landroid/view/View;

.field private statusBarHeight:I

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->isfirst:Z

    const v0, 0x1020002

    .line 29
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->mChildOfContent:Landroid/view/View;

    .line 31
    iget-object p1, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/media/common/util/SoftHideKeyBoardUtil$1;

    invoke-direct {v0, p0}, Lcom/media/common/util/SoftHideKeyBoardUtil$1;-><init>(Lcom/media/common/util/SoftHideKeyBoardUtil;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 40
    iget-object p1, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$000(Lcom/media/common/util/SoftHideKeyBoardUtil;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->isfirst:Z

    return p0
.end method

.method static synthetic access$002(Lcom/media/common/util/SoftHideKeyBoardUtil;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->isfirst:Z

    return p1
.end method

.method static synthetic access$102(Lcom/media/common/util/SoftHideKeyBoardUtil;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->contentHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/media/common/util/SoftHideKeyBoardUtil;)Landroid/view/View;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->mChildOfContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/media/common/util/SoftHideKeyBoardUtil;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/media/common/util/SoftHideKeyBoardUtil;->possiblyResizeChildOfContent()V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/media/common/util/SoftHideKeyBoardUtil;

    invoke-direct {v0, p0}, Lcom/media/common/util/SoftHideKeyBoardUtil;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private computeUsableHeight()I
    .locals 1

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 64
    iget-object p0, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 65
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v0

    return p0
.end method

.method public static isShowKeyBoard(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 1

    const-string v0, "input_method"

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 83
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 85
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :goto_0
    return-void
.end method

.method private possiblyResizeChildOfContent()V
    .locals 5

    .line 44
    invoke-direct {p0}, Lcom/media/common/util/SoftHideKeyBoardUtil;->computeUsableHeight()I

    move-result v0

    .line 45
    iget v1, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->usableHeightPrevious:I

    if-eq v0, v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v2, v1, v0

    .line 48
    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_1

    .line 49
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 50
    iget-object v3, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->statusBarHeight:I

    add-int/2addr v1, v2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->contentHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 58
    iput v0, p0, Lcom/media/common/util/SoftHideKeyBoardUtil;->usableHeightPrevious:I

    :cond_2
    return-void
.end method
