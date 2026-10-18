.class public Lcom/yftech/car/widget/media/text/VisibilityTextButton;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "VisibilityTextButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;
    }
.end annotation


# static fields
.field public static final GRADUAL_CHANGE:I = 0x2

.field public static final HIDE_SYSTEM_UI:I = 0x8

.field public static final HIDE_VIEW:I = 0x2

.field public static final NO_ANIMATION:I = 0x0

.field public static final SHOW_SYSTEM_UI:I = 0x4

.field public static final SHOW_VIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VisibilityTextButton"

.field public static final TRANSLATION:I = 0x1


# instance fields
.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentText:Ljava/lang/String;

.field private mHideShowAnimation:I

.field private mHideShowAnimationDuration:I

.field private mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

.field private mVideoPlayClick:I

.field private final mVideoPlayClickViewId:[I

.field private final mVisibilityGoneVisibleClickViewId:[I

.field private mVisibilityShowDrawable:Landroid/graphics/drawable/Drawable;

.field private mVisibilityShowText:Ljava/lang/String;

.field private final mVisibilityVisibleClickViewId:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 69
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVideoPlayClickViewId:[I

    .line 71
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityVisibleClickViewId:[I

    .line 73
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityGoneVisibleClickViewId:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 82
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x5

    .line 69
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVideoPlayClickViewId:[I

    .line 71
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityVisibleClickViewId:[I

    .line 73
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityGoneVisibleClickViewId:[I

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->initStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x5

    .line 69
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVideoPlayClickViewId:[I

    .line 71
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityVisibleClickViewId:[I

    .line 73
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityGoneVisibleClickViewId:[I

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->initStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 92
    sget-object v0, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 94
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_click_switch_visibility:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVideoPlayClick:I

    .line 96
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVideoPlayClickViewId:[I

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_click_view1_id:I

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    aput v1, p2, v0

    .line 97
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVideoPlayClickViewId:[I

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_click_view2_id:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v3, 0x1

    aput v1, p2, v3

    .line 98
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVideoPlayClickViewId:[I

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_click_view3_id:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v4, 0x2

    aput v1, p2, v4

    .line 99
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVideoPlayClickViewId:[I

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_click_view4_id:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v5, 0x3

    aput v1, p2, v5

    .line 100
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVideoPlayClickViewId:[I

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_click_view5_id:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v6, 0x4

    aput v1, p2, v6

    .line 102
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityVisibleClickViewId:[I

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_visible_click_view1_id:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    aput v1, p2, v0

    .line 103
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityVisibleClickViewId:[I

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_visible_click_view2_id:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    aput v1, p2, v3

    .line 104
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityVisibleClickViewId:[I

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_visible_click_view3_id:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    aput v1, p2, v4

    .line 105
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityVisibleClickViewId:[I

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_visible_click_view4_id:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    aput v1, p2, v5

    .line 106
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityVisibleClickViewId:[I

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_visible_click_view5_id:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    aput v1, p2, v6

    .line 109
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityGoneVisibleClickViewId:[I

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_gone_visible_click_view1_id:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    aput v1, p2, v0

    .line 110
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityGoneVisibleClickViewId:[I

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_gone_visible_click_view2_id:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    aput v0, p2, v3

    .line 111
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityGoneVisibleClickViewId:[I

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_gone_visible_click_view3_id:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    aput v0, p2, v4

    .line 112
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityGoneVisibleClickViewId:[I

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_gone_visible_click_view4_id:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    aput v0, p2, v5

    .line 113
    iget-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityGoneVisibleClickViewId:[I

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_gone_visible_click_view5_id:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    aput v0, p2, v6

    .line 115
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_show_drawable:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityShowDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_show_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityShowText:Ljava/lang/String;

    .line 119
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_hide_show_animation:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mHideShowAnimation:I

    .line 121
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->VisibilityTextButton_visibility_hide_show_animation_duration:I

    const/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mHideShowAnimationDuration:I

    return-void
.end method


# virtual methods
.method public isMediaDataListShow(Landroid/view/View;)Z
    .locals 5

    .line 155
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVideoPlayClickViewId:[I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 157
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 158
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 168
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

    if-eqz p1, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

    iget-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVideoPlayClickViewId:[I

    iget v1, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVideoPlayClick:I

    iget v2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mHideShowAnimation:I

    iget v3, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mHideShowAnimationDuration:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;->onClickVisibility([IIII)V

    .line 171
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

    iget-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityVisibleClickViewId:[I

    iget v1, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mHideShowAnimation:I

    iget v2, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mHideShowAnimationDuration:I

    invoke-interface {p1, v0, v1, v2}, Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;->onClickVisibilityVisible([III)V

    .line 172
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

    iget-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityGoneVisibleClickViewId:[I

    iget v1, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mHideShowAnimation:I

    iget p0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mHideShowAnimationDuration:I

    invoke-interface {p1, v0, v1, p0}, Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;->onClickVisibilityGone([III)V

    goto :goto_0

    :cond_0
    const-string p0, "VisibilityTextButton"

    const-string p1, "onClick: no VISIBLE"

    .line 174
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 128
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onFinishInflate()V

    .line 129
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mCurrentText:Ljava/lang/String;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityShowText:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mCurrentText:Ljava/lang/String;

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityShowText:Ljava/lang/String;

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityShowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityShowDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    :cond_2
    iget v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVideoPlayClick:I

    if-lez v0, :cond_3

    .line 141
    invoke-virtual {p0, p0}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public setOnClickVisibilityListener(Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mOnClickVisibilityListener:Lcom/yftech/car/widget/media/text/VisibilityTextButton$OnClickVisibilityListener;

    return-void
.end method

.method public setVisibilityShow(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityShowText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mCurrentText:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mVisibilityShowDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
