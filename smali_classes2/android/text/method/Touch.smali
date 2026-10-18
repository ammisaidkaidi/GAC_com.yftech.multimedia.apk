.class public Landroid/text/method/Touch;
.super Ljava/lang/Object;
.source "Touch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/Touch$DragState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .locals 2

    .line 185
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p0

    const-class v0, Landroid/text/method/Touch$DragState;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p0, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/method/Touch$DragState;

    .line 186
    array-length p1, p0

    if-lez p1, :cond_0

    aget-object p0, p0, v1

    iget p0, p0, Landroid/text/method/Touch$DragState;->mScrollX:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .locals 2

    .line 194
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p0

    const-class v0, Landroid/text/method/Touch$DragState;

    const/4 v1, 0x0

    invoke-interface {p1, v1, p0, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/method/Touch$DragState;

    .line 195
    array-length p1, p0

    if-lez p1, :cond_0

    aget-object p0, p0, v1

    iget p0, p0, Landroid/text/method/Touch$DragState;->mScrollY:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 119
    :pswitch_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v2, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 121
    array-length v3, v0

    if-lez v3, :cond_a

    .line 122
    aget-object v3, v0, v2

    iget-boolean v3, v3, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-nez v3, :cond_1

    .line 123
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 125
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aget-object v5, v0, v2

    iget v5, v5, Landroid/text/method/Touch$DragState;->mX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v3, v3

    cmpl-float v4, v4, v3

    if-gez v4, :cond_0

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aget-object v5, v0, v2

    iget v5, v5, Landroid/text/method/Touch$DragState;->mY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_1

    .line 127
    :cond_0
    aget-object v3, v0, v2

    iput-boolean v1, v3, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    .line 131
    :cond_1
    aget-object v3, v0, v2

    iget-boolean v3, v3, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-eqz v3, :cond_a

    .line 132
    aget-object v3, v0, v2

    iput-boolean v1, v3, Landroid/text/method/Touch$DragState;->mUsed:Z

    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/2addr v3, v1

    if-nez v3, :cond_3

    .line 134
    invoke-static {p1, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v1, :cond_3

    const/16 v3, 0x800

    .line 136
    invoke-static {p1, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    aget-object v3, v0, v2

    iget v3, v3, Landroid/text/method/Touch$DragState;->mX:F

    sub-float/2addr p1, v3

    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aget-object v4, v0, v2

    iget v4, v4, Landroid/text/method/Touch$DragState;->mY:F

    sub-float/2addr v3, v4

    goto :goto_2

    .line 147
    :cond_4
    aget-object p1, v0, v2

    iget p1, p1, Landroid/text/method/Touch$DragState;->mX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr p1, v3

    .line 148
    aget-object v3, v0, v2

    iget v3, v3, Landroid/text/method/Touch$DragState;->mY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 150
    :goto_2
    aget-object v4, v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/text/method/Touch$DragState;->mX:F

    .line 151
    aget-object v0, v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, v0, Landroid/text/method/Touch$DragState;->mY:F

    .line 153
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result p2

    float-to-int p1, p1

    add-int/2addr p2, p1

    .line 154
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result p1

    float-to-int v0, v3

    add-int/2addr p1, v0

    .line 156
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v3

    add-int/2addr v0, v3

    .line 157
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 159
    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    sub-int/2addr v4, v5

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 160
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 162
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    .line 163
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    .line 165
    invoke-static {p0, v3, p2, p1}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 168
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result p1

    if-ne v0, p1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result p1

    if-eq v2, p1, :cond_6

    .line 169
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->cancelLongPress()V

    :cond_6
    return v1

    .line 106
    :pswitch_1
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p0

    const-class p2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v2, p0, p2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/method/Touch$DragState;

    move p2, v2

    .line 108
    :goto_3
    array-length v0, p0

    if-ge p2, v0, :cond_7

    .line 109
    aget-object v0, p0, p2

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 112
    :cond_7
    array-length p1, p0

    if-lez p1, :cond_8

    aget-object p0, p0, v2

    iget-boolean p0, p0, Landroid/text/method/Touch$DragState;->mUsed:Z

    if-eqz p0, :cond_8

    return v1

    :cond_8
    return v2

    .line 94
    :pswitch_2
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v2, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    move v3, v2

    .line 96
    :goto_4
    array-length v4, v0

    if-ge v3, v4, :cond_9

    .line 97
    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 100
    :cond_9
    new-instance v0, Landroid/text/method/Touch$DragState;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 101
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result p0

    invoke-direct {v0, v3, p2, v4, p0}, Landroid/text/method/Touch$DragState;-><init>(FFII)V

    const/16 p0, 0x11

    .line 100
    invoke-interface {p1, v0, v2, v2, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return v1

    :cond_a
    :goto_5
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V
    .locals 9

    .line 38
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    .line 41
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 42
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v2

    .line 43
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 46
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 48
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    add-int/2addr v6, p3

    sub-int/2addr v6, v5

    invoke-virtual {p1, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    const v6, 0x7fffffff

    move v8, v6

    move v6, v4

    move v4, v8

    :goto_1
    if-gt v0, v5, :cond_2

    int-to-float v4, v4

    .line 54
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    int-to-float v6, v6

    .line 55
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v6, v1

    :cond_2
    sub-int p1, v6, v4

    if-ge p1, v1, :cond_7

    .line 65
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v2, p2, :cond_3

    sub-int/2addr v1, p1

    .line 66
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v4, v1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    .line 67
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-eq v2, p2, :cond_6

    :cond_4
    if-nez v3, :cond_5

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-eq v2, p2, :cond_6

    :cond_5
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v2, p2, :cond_8

    :cond_6
    sub-int/2addr v1, p1

    sub-int/2addr v4, v1

    goto :goto_2

    :cond_7
    sub-int/2addr v6, v1

    .line 77
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 78
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 81
    :cond_8
    :goto_2
    invoke-virtual {p0, v4, p3}, Landroid/widget/TextView;->scrollTo(II)V

    return-void
.end method
