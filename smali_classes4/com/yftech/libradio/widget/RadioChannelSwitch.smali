.class public Lcom/yftech/libradio/widget/RadioChannelSwitch;
.super Landroid/widget/FrameLayout;
.source "RadioChannelSwitch.java"

# interfaces
.implements Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/widget/RadioChannelSwitch$OnCheckChangeListener;
    }
.end annotation


# instance fields
.field private onCheckChangeListener:Lcom/yftech/libradio/widget/RadioChannelSwitch$OnCheckChangeListener;

.field private rb_am:Landroid/widget/RadioButton;

.field private rb_fm:Landroid/widget/RadioButton;

.field private rg:Lcom/media/common/ui/widget/FlowRadioGroup;

.field private translationOffset:I

.field private v_selected:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x5a

    .line 49
    iput p1, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->translationOffset:I

    .line 60
    invoke-direct {p0}, Lcom/yftech/libradio/widget/RadioChannelSwitch;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 65
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/RadioChannelSwitch;->removeAllViews()V

    .line 67
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/RadioChannelSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$layout;->layout_fm_am_switch:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    sget v1, Lcom/yftech/libradio/R$id;->v_selected:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->v_selected:Landroid/view/View;

    .line 70
    sget v1, Lcom/yftech/libradio/R$id;->rg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/media/common/ui/widget/FlowRadioGroup;

    iput-object v1, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->rg:Lcom/media/common/ui/widget/FlowRadioGroup;

    .line 71
    iget-object v1, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->rg:Lcom/media/common/ui/widget/FlowRadioGroup;

    sget v2, Lcom/yftech/libradio/R$id;->rb_fm:I

    invoke-virtual {v1, v2}, Lcom/media/common/ui/widget/FlowRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->rb_fm:Landroid/widget/RadioButton;

    .line 72
    iget-object v1, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->rg:Lcom/media/common/ui/widget/FlowRadioGroup;

    sget v2, Lcom/yftech/libradio/R$id;->rb_am:I

    invoke-virtual {v1, v2}, Lcom/media/common/ui/widget/FlowRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->rb_am:Landroid/widget/RadioButton;

    .line 74
    iget-object v1, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->rg:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-virtual {v1, p0}, Lcom/media/common/ui/widget/FlowRadioGroup;->setOnCheckedChangeListener(Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;)V

    .line 76
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0xc8

    const/16 v3, 0x48

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/yftech/libradio/widget/RadioChannelSwitch;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private isRTL()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public check(I)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->rg:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->check(I)V

    return-void
.end method

.method public getCheckedId()I
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->rg:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/FlowRadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    return p0
.end method

.method public onCheckedChanged(Lcom/media/common/ui/widget/FlowRadioGroup;I)V
    .locals 3

    .line 84
    invoke-direct {p0}, Lcom/yftech/libradio/widget/RadioChannelSwitch;->isRTL()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->v_selected:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v2, Lcom/yftech/libradio/R$id;->rb_fm:I

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->translationOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->v_selected:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v2, Lcom/yftech/libradio/R$id;->rb_fm:I

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->translationOffset:I

    int-to-float v1, v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 90
    :goto_2
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/RadioChannelSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$font;->roboto_regular:I

    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/RadioChannelSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/yftech/libradio/R$font;->roboto_medium:I

    invoke-static {v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 93
    sget v2, Lcom/yftech/libradio/R$id;->rb_fm:I

    if-ne p2, v2, :cond_3

    .line 94
    iget-object v2, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->rb_fm:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    iget-object v1, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->rb_am:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    .line 97
    :cond_3
    iget-object v2, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->rb_fm:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    iget-object v0, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->rb_am:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    :goto_3
    iget-object v0, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->onCheckChangeListener:Lcom/yftech/libradio/widget/RadioChannelSwitch$OnCheckChangeListener;

    if-eqz v0, :cond_4

    .line 102
    iget-object p0, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->onCheckChangeListener:Lcom/yftech/libradio/widget/RadioChannelSwitch$OnCheckChangeListener;

    invoke-interface {p0, p1, p2}, Lcom/yftech/libradio/widget/RadioChannelSwitch$OnCheckChangeListener;->onCheckChange(Lcom/media/common/ui/widget/FlowRadioGroup;I)V

    :cond_4
    return-void
.end method

.method public setOnCheckChangeListener(Lcom/yftech/libradio/widget/RadioChannelSwitch$OnCheckChangeListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/yftech/libradio/widget/RadioChannelSwitch;->onCheckChangeListener:Lcom/yftech/libradio/widget/RadioChannelSwitch$OnCheckChangeListener;

    return-void
.end method
