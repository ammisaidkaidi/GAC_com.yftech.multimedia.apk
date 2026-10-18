.class public Landroid/webkit/WebView$PrivateAccess;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrivateAccess"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    .line 2510
    iput-object p1, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public awakenScrollBars(I)V
    .locals 0

    .line 2571
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0, p1}, Landroid/webkit/WebView;->access$1400(Landroid/webkit/WebView;I)Z

    return-void
.end method

.method public awakenScrollBars(IZ)V
    .locals 0

    .line 2575
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0, p1, p2}, Landroid/webkit/WebView;->access$1500(Landroid/webkit/WebView;IZ)Z

    return-void
.end method

.method public getHorizontalScrollFactor()F
    .locals 0

    .line 2583
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)F

    move-result p0

    return p0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 0

    .line 2595
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)I

    move-result p0

    return p0
.end method

.method public getVerticalScrollFactor()F
    .locals 0

    .line 2579
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)F

    move-result p0

    return p0
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    .line 2591
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)V
    .locals 10

    move-object v0, p0

    .line 2566
    iget-object v0, v0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Landroid/webkit/WebView;->access$1300(Landroid/webkit/WebView;IIIIIIIIZ)Z

    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 0

    .line 2587
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0, p1, p2}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;II)V

    return-void
.end method

.method public setScrollXRaw(I)V
    .locals 0

    .line 2606
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0, p1}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;I)I

    return-void
.end method

.method public setScrollYRaw(I)V
    .locals 0

    .line 2611
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0, p1}, Landroid/webkit/WebView;->access$2202(Landroid/webkit/WebView;I)I

    return-void
.end method

.method public super_computeScroll()V
    .locals 0

    .line 2521
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0}, Landroid/webkit/WebView;->access$301(Landroid/webkit/WebView;)V

    return-void
.end method

.method public super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 2541
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0, p1}, Landroid/webkit/WebView;->access$801(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public super_getScrollBarStyle()I
    .locals 0

    .line 2513
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0}, Landroid/webkit/WebView;->access$101(Landroid/webkit/WebView;)I

    move-result p0

    return p0
.end method

.method public super_onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7

    .line 2600
    iget-object v0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/webkit/WebView;->access$2001(Landroid/webkit/WebView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2545
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0, p1}, Landroid/webkit/WebView;->access$901(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public super_onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2525
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0, p1}, Landroid/webkit/WebView;->access$401(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public super_performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 0

    .line 2529
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0, p1, p2}, Landroid/webkit/WebView;->access$501(Landroid/webkit/WebView;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public super_performLongClick()Z
    .locals 0

    .line 2533
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0}, Landroid/webkit/WebView;->access$601(Landroid/webkit/WebView;)Z

    move-result p0

    return p0
.end method

.method public super_requestFocus(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 2549
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0, p1, p2}, Landroid/webkit/WebView;->access$1001(Landroid/webkit/WebView;ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public super_scrollTo(II)V
    .locals 0

    .line 2517
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0, p1, p2}, Landroid/webkit/WebView;->access$201(Landroid/webkit/WebView;II)V

    return-void
.end method

.method public super_setFrame(IIII)Z
    .locals 0

    .line 2537
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->access$701(Landroid/webkit/WebView;IIII)Z

    move-result p0

    return p0
.end method

.method public super_setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2553
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0, p1}, Landroid/webkit/WebView;->access$1101(Landroid/webkit/WebView;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public super_startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 2557
    iget-object p0, p0, Landroid/webkit/WebView$PrivateAccess;->this$0:Landroid/webkit/WebView;

    invoke-static {p0, p1, p2}, Landroid/webkit/WebView;->access$1201(Landroid/webkit/WebView;Landroid/content/Intent;I)V

    return-void
.end method
