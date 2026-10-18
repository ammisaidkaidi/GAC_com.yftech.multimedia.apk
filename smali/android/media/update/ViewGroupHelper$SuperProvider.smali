.class public Landroid/media/update/ViewGroupHelper$SuperProvider;
.super Ljava/lang/Object;
.source "ViewGroupHelper.java"

# interfaces
.implements Landroid/media/update/ViewGroupProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/update/ViewGroupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuperProvider"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/update/ViewGroupHelper;


# direct methods
.method public constructor <init>(Landroid/media/update/ViewGroupHelper;)V
    .locals 0

    .line 152
    iput-object p1, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkLayoutParams_impl(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 225
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0, p1}, Landroid/media/update/ViewGroupHelper;->access$1301(Landroid/media/update/ViewGroupHelper;Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent_impl(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 220
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0, p1}, Landroid/media/update/ViewGroupHelper;->access$1201(Landroid/media/update/ViewGroupHelper;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public generateDefaultLayoutParams_impl()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 230
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0}, Landroid/media/update/ViewGroupHelper;->access$1401(Landroid/media/update/ViewGroupHelper;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams_impl(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 235
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0, p1}, Landroid/media/update/ViewGroupHelper;->access$1501(Landroid/media/update/ViewGroupHelper;Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams_impl(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 240
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0, p1}, Landroid/media/update/ViewGroupHelper;->access$1601(Landroid/media/update/ViewGroupHelper;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibilityClassName_impl()Ljava/lang/CharSequence;
    .locals 0

    .line 155
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0}, Landroid/media/update/ViewGroupHelper;->access$001(Landroid/media/update/ViewGroupHelper;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getSuggestedMinimumHeight_impl()I
    .locals 0

    .line 210
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0}, Landroid/media/update/ViewGroupHelper;->access$1001(Landroid/media/update/ViewGroupHelper;)I

    move-result p0

    return p0
.end method

.method public getSuggestedMinimumWidth_impl()I
    .locals 0

    .line 205
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0}, Landroid/media/update/ViewGroupHelper;->access$901(Landroid/media/update/ViewGroupHelper;)I

    move-result p0

    return p0
.end method

.method public measureChildWithMargins_impl(Landroid/view/View;IIII)V
    .locals 6

    .line 252
    iget-object v0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/media/update/ViewGroupHelper;->access$1801(Landroid/media/update/ViewGroupHelper;Landroid/view/View;IIII)V

    return-void
.end method

.method public onAttachedToWindow_impl()V
    .locals 0

    .line 180
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0}, Landroid/media/update/ViewGroupHelper;->access$501(Landroid/media/update/ViewGroupHelper;)V

    return-void
.end method

.method public onDetachedFromWindow_impl()V
    .locals 0

    .line 185
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0}, Landroid/media/update/ViewGroupHelper;->access$601(Landroid/media/update/ViewGroupHelper;)V

    return-void
.end method

.method public onFinishInflate_impl()V
    .locals 0

    .line 170
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0}, Landroid/media/update/ViewGroupHelper;->access$301(Landroid/media/update/ViewGroupHelper;)V

    return-void
.end method

.method public onLayout_impl(ZIIII)V
    .locals 0

    return-void
.end method

.method public onMeasure_impl(II)V
    .locals 0

    .line 200
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0, p1, p2}, Landroid/media/update/ViewGroupHelper;->access$801(Landroid/media/update/ViewGroupHelper;II)V

    return-void
.end method

.method public onTouchEvent_impl(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 160
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0, p1}, Landroid/media/update/ViewGroupHelper;->access$101(Landroid/media/update/ViewGroupHelper;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTrackballEvent_impl(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 165
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0, p1}, Landroid/media/update/ViewGroupHelper;->access$201(Landroid/media/update/ViewGroupHelper;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onVisibilityAggregated_impl(Z)V
    .locals 0

    .line 190
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0, p1}, Landroid/media/update/ViewGroupHelper;->access$701(Landroid/media/update/ViewGroupHelper;Z)V

    return-void
.end method

.method public setEnabled_impl(Z)V
    .locals 0

    .line 175
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0, p1}, Landroid/media/update/ViewGroupHelper;->access$401(Landroid/media/update/ViewGroupHelper;Z)V

    return-void
.end method

.method public setMeasuredDimension_impl(II)V
    .locals 0

    .line 215
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0, p1, p2}, Landroid/media/update/ViewGroupHelper;->access$1101(Landroid/media/update/ViewGroupHelper;II)V

    return-void
.end method

.method public shouldDelayChildPressedState_impl()Z
    .locals 0

    .line 245
    iget-object p0, p0, Landroid/media/update/ViewGroupHelper$SuperProvider;->this$0:Landroid/media/update/ViewGroupHelper;

    invoke-static {p0}, Landroid/media/update/ViewGroupHelper;->access$1701(Landroid/media/update/ViewGroupHelper;)Z

    move-result p0

    return p0
.end method
