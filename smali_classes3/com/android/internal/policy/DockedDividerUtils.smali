.class public Lcom/android/internal/policy/DockedDividerUtils;
.super Ljava/lang/Object;
.source "DockedDividerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBoundsForPosition(IILandroid/graphics/Rect;III)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p2, v0, v0, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/2addr p0, p5

    .line 48
    iput p0, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :pswitch_1
    add-int/2addr p0, p5

    .line 45
    iput p0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 42
    :pswitch_2
    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 39
    :pswitch_3
    iput p0, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    goto :goto_1

    :cond_0
    move p0, v0

    .line 51
    :cond_1
    :goto_1
    invoke-static {p2, p0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static calculateMiddlePosition(ZLandroid/graphics/Rect;III)I
    .locals 1

    if-eqz p0, :cond_0

    .line 101
    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    if-eqz p0, :cond_1

    .line 103
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p0

    goto :goto_1

    .line 104
    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->right:I

    sub-int p3, p2, p0

    :goto_1
    sub-int/2addr p3, v0

    .line 105
    div-int/lit8 p3, p3, 0x2

    add-int/2addr v0, p3

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr v0, p4

    return v0
.end method

.method public static calculatePositionForBounds(Landroid/graphics/Rect;II)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 93
    :pswitch_0
    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p2

    return p0

    .line 91
    :pswitch_1
    iget p0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p2

    return p0

    .line 89
    :pswitch_2
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0

    .line 87
    :pswitch_3
    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDockSideFromCreatedMode(ZZ)I
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method public static invertDockSide(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sanitizeStackBounds(Landroid/graphics/Rect;Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 68
    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-lt p1, v0, :cond_0

    .line 69
    iget p1, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 71
    :cond_0
    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-lt p1, v0, :cond_3

    .line 72
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 75
    :cond_1
    iget p1, p0, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-gt p1, v0, :cond_2

    .line 76
    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 78
    :cond_2
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-gt p1, v0, :cond_3

    .line 79
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    :goto_0
    return-void
.end method
