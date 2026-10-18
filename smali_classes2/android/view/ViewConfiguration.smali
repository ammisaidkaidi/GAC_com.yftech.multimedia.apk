.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final A11Y_SHORTCUT_KEY_TIMEOUT:I = 0xbb8

.field private static final A11Y_SHORTCUT_KEY_TIMEOUT_AFTER_CONFIRMATION:I = 0x3e8

.field private static final ACTION_MODE_HIDE_DURATION_DEFAULT:J = 0x7d0L

.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DEFAULT_MULTI_PRESS_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final HORIZONTAL_SCROLL_FACTOR:F = 64.0f

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final HOVER_TOOLTIP_HIDE_SHORT_TIMEOUT:I = 0xbb8

.field private static final HOVER_TOOLTIP_HIDE_TIMEOUT:I = 0x3a98

.field private static final HOVER_TOOLTIP_SHOW_TIMEOUT:I = 0x1f4

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final LONG_PRESS_TOOLTIP_HIDE_TIMEOUT:I = 0x5dc

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final MIN_SCROLLBAR_TOUCH_TARGET:I = 0x30

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0x4

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0x64

.field private static final TOUCH_SLOP:I = 0x8

.field private static final VERTICAL_SCROLL_FACTOR:F = 64.0f

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mGlobalActionsKeyTimeout:J

.field private final mHorizontalScrollFactor:F

.field private final mHoverSlop:I

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinScrollbarTouchTarget:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mShowMenuShortcutsWhenKeyboardPresent:Z

.field private final mTouchSlop:I

.field private final mVerticalScrollFactor:F

.field private final mWindowTouchSlop:I

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 311
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 319
    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 320
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    const/16 v0, 0x32

    .line 321
    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    const/16 v0, 0x1f40

    .line 322
    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    const/4 v0, 0x4

    .line 323
    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    const/16 v1, 0x8

    .line 324
    iput v1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 325
    iput v0, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    const/16 v0, 0x30

    .line 326
    iput v0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    .line 327
    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    const/16 v0, 0x10

    .line 328
    iput v0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    const/16 v1, 0x64

    .line 329
    iput v1, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 330
    iput v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    const v0, 0x177000

    .line 332
    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    const/4 v0, 0x0

    .line 333
    iput v0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    const/4 v1, 0x6

    .line 334
    iput v1, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    const/4 v1, 0x1

    .line 335
    iput-boolean v1, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    const-wide/16 v1, 0x1f4

    .line 336
    iput-wide v1, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    const/high16 v1, 0x42800000    # 64.0f

    .line 337
    iput v1, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    .line 338
    iput v1, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    .line 339
    iput-boolean v0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 355
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 356
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v3, 0x4

    .line 358
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    :cond_0
    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 364
    iput v2, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 365
    iput v2, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    const v2, 0x1050063

    .line 366
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 368
    iput v2, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v2, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 369
    iput v2, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    const-string/jumbo v2, "window"

    .line 372
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 373
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 374
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 375
    invoke-virtual {p1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 376
    iget p1, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr p1, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr p1, v2

    iput p1, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    const/4 p1, 0x0

    mul-float/2addr p1, v1

    add-float/2addr p1, v4

    float-to-int p1, p1

    .line 378
    iput p1, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    const/high16 p1, 0x40c00000    # 6.0f

    mul-float/2addr v1, p1

    add-float/2addr v1, v4

    float-to-int p1, v1

    .line 379
    iput p1, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    .line 381
    iget-boolean p1, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    if-nez p1, :cond_1

    const p1, 0x10e0080

    .line 382
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 388
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    goto :goto_0

    .line 404
    :pswitch_0
    iput-boolean v1, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 405
    iput-boolean v2, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto :goto_1

    .line 399
    :pswitch_1
    iput-boolean v2, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 400
    iput-boolean v2, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z

    goto :goto_1

    .line 390
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    .line 391
    iput-boolean v2, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKeySet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 393
    :catch_0
    iput-boolean v1, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    :cond_1
    :goto_1
    const p1, 0x11200bd

    .line 410
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    const p1, 0x1050066

    .line 412
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    const p1, 0x1050065

    .line 414
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    const p1, 0x1050059

    .line 416
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    .line 418
    iget p1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    .line 420
    iget p1, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    iput p1, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    const p1, 0x1050068

    .line 422
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    const p1, 0x1050067

    .line 424
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    const p1, 0x10e0046

    .line 426
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    const p1, 0x1050054

    .line 429
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    const p1, 0x1050064

    .line 431
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    const p1, 0x112009a

    .line 434
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .locals 2

    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 448
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 450
    sget-object v1, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewConfiguration;

    if-nez v1, :cond_0

    .line 452
    new-instance v1, Landroid/view/ViewConfiguration;

    invoke-direct {v1, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 453
    sget-object p0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static getDefaultActionModeHideDuration()J
    .locals 2

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public static getDoubleTapMinTime()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public static getDoubleTapSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .locals 1

    const/16 v0, 0x96

    return v0
.end method

.method public static getHoverTooltipHideShortTimeout()I
    .locals 1

    const/16 v0, 0xbb8

    return v0
.end method

.method public static getHoverTooltipHideTimeout()I
    .locals 1

    const/16 v0, 0x3a98

    return v0
.end method

.method public static getHoverTooltipShowTimeout()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public static getJumpTapTimeout()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .locals 1

    .line 548
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .locals 2

    const-string v0, "long_press_timeout"

    const/16 v1, 0x1f4

    .line 530
    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLongPressTooltipHideTimeout()I
    .locals 1

    const/16 v0, 0x5dc

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x1f40

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x32

    return v0
.end method

.method public static getMultiPressTimeout()I
    .locals 2

    const-string v0, "multi_press_timeout"

    const/16 v1, 0x12c

    .line 540
    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPressedStateDuration()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .locals 1

    const v0, 0x3c75c28f    # 0.015f

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .locals 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public static getTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x8

    return v0
.end method

.method public static getWindowTouchSlop()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getAccessibilityShortcutKeyTimeout()J
    .locals 2

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public getAccessibilityShortcutKeyTimeoutAfterConfirmation()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getDeviceGlobalActionKeyTimeout()J
    .locals 2

    .line 861
    iget-wide v0, p0, Landroid/view/ViewConfiguration;->mGlobalActionsKeyTimeout:J

    return-wide v0
.end method

.method public getScaledDoubleTapSlop()I
    .locals 0

    .line 694
    iget p0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return p0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .locals 0

    .line 666
    iget p0, p0, Landroid/view/ViewConfiguration;->mDoubleTapTouchSlop:I

    return p0
.end method

.method public getScaledEdgeSlop()I
    .locals 0

    .line 632
    iget p0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return p0
.end method

.method public getScaledFadingEdgeLength()I
    .locals 0

    .line 514
    iget p0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return p0
.end method

.method public getScaledHorizontalScrollFactor()F
    .locals 0

    .line 779
    iget p0, p0, Landroid/view/ViewConfiguration;->mHorizontalScrollFactor:F

    return p0
.end method

.method public getScaledHoverSlop()I
    .locals 0

    .line 657
    iget p0, p0, Landroid/view/ViewConfiguration;->mHoverSlop:I

    return p0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .locals 0

    .line 809
    iget p0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return p0
.end method

.method public getScaledMaximumFlingVelocity()I
    .locals 0

    .line 761
    iget p0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return p0
.end method

.method public getScaledMinScrollbarTouchTarget()I
    .locals 0

    .line 483
    iget p0, p0, Landroid/view/ViewConfiguration;->mMinScrollbarTouchTarget:I

    return p0
.end method

.method public getScaledMinimumFlingVelocity()I
    .locals 0

    .line 744
    iget p0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return p0
.end method

.method public getScaledOverflingDistance()I
    .locals 0

    .line 825
    iget p0, p0, Landroid/view/ViewConfiguration;->mOverflingDistance:I

    return p0
.end method

.method public getScaledOverscrollDistance()I
    .locals 0

    .line 817
    iget p0, p0, Landroid/view/ViewConfiguration;->mOverscrollDistance:I

    return p0
.end method

.method public getScaledPagingTouchSlop()I
    .locals 0

    .line 674
    iget p0, p0, Landroid/view/ViewConfiguration;->mPagingTouchSlop:I

    return p0
.end method

.method public getScaledScrollBarSize()I
    .locals 0

    .line 475
    iget p0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return p0
.end method

.method public getScaledScrollFactor()I
    .locals 0

    .line 771
    iget p0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    float-to-int p0, p0

    return p0
.end method

.method public getScaledTouchSlop()I
    .locals 0

    .line 649
    iget p0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return p0
.end method

.method public getScaledVerticalScrollFactor()F
    .locals 0

    .line 787
    iget p0, p0, Landroid/view/ViewConfiguration;->mVerticalScrollFactor:F

    return p0
.end method

.method public getScaledWindowTouchSlop()I
    .locals 0

    .line 727
    iget p0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return p0
.end method

.method public hasPermanentMenuKey()Z
    .locals 0

    .line 915
    iget-boolean p0, p0, Landroid/view/ViewConfiguration;->sHasPermanentMenuKey:Z

    return p0
.end method

.method public isFadingMarqueeEnabled()Z
    .locals 0

    .line 932
    iget-boolean p0, p0, Landroid/view/ViewConfiguration;->mFadingMarqueeEnabled:Z

    return p0
.end method

.method public shouldShowMenuShortcutsWhenKeyboardPresent()Z
    .locals 0

    .line 924
    iget-boolean p0, p0, Landroid/view/ViewConfiguration;->mShowMenuShortcutsWhenKeyboardPresent:Z

    return p0
.end method
