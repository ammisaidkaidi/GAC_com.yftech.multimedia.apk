.class public Lcom/yftech/libradio/widget/RadioDabChannelSwitch;
.super Landroid/widget/FrameLayout;
.source "RadioDabChannelSwitch.java"

# interfaces
.implements Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/widget/RadioDabChannelSwitch$OnCheckChangeListener;
    }
.end annotation


# instance fields
.field private onCheckChangeListener:Lcom/yftech/libradio/widget/RadioDabChannelSwitch$OnCheckChangeListener;

.field private rb_am:Landroid/widget/RadioButton;

.field private rb_dab:Landroid/widget/RadioButton;

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

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x5a

    .line 44
    iput p1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->translationOffset:I

    .line 55
    invoke-direct {p0}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 60
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->removeAllViews()V

    .line 65
    invoke-static {}, Lcom/yftech/libradio/Utils;->isRadioDABPresent()Z

    move-result v0

    const/16 v1, 0x48

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 66
    invoke-static {}, Lcom/yftech/libradio/Utils;->isFMAndAMPresent()Z

    move-result v0

    const/16 v3, 0x6a

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lcom/yftech/libradio/R$layout;->layout_fm_am_dab_switch:I

    invoke-virtual {v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    sget v2, Lcom/yftech/libradio/R$id;->rb_dab:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_dab:Landroid/widget/RadioButton;

    .line 69
    iput v3, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->translationOffset:I

    .line 70
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x13e

    invoke-direct {v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 74
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/yftech/libradio/R$layout;->layout_dab_switch:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 75
    sget v2, Lcom/yftech/libradio/R$id;->rg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/media/common/ui/widget/FlowRadioGroup;

    iput-object v2, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rg:Lcom/media/common/ui/widget/FlowRadioGroup;

    .line 76
    iget-object v2, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rg:Lcom/media/common/ui/widget/FlowRadioGroup;

    sget v3, Lcom/yftech/libradio/R$id;->rb_dab:I

    invoke-virtual {v2, v3}, Lcom/media/common/ui/widget/FlowRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_dab:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    .line 77
    iput v2, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->translationOffset:I

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/yftech/libradio/R$layout;->layout_fm_am_switch:I

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x5a

    .line 81
    iput v2, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->translationOffset:I

    .line 82
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0xc8

    invoke-direct {v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 84
    :goto_0
    sget v1, Lcom/yftech/libradio/R$id;->v_selected:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->v_selected:Landroid/view/View;

    .line 85
    sget v1, Lcom/yftech/libradio/R$id;->rg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/media/common/ui/widget/FlowRadioGroup;

    iput-object v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rg:Lcom/media/common/ui/widget/FlowRadioGroup;

    .line 86
    sget v1, Lcom/yftech/libradio/R$id;->rb_fm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_fm:Landroid/widget/RadioButton;

    .line 87
    sget v1, Lcom/yftech/libradio/R$id;->rb_am:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_am:Landroid/widget/RadioButton;

    .line 89
    iget-object v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rg:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-virtual {v1, p0}, Lcom/media/common/ui/widget/FlowRadioGroup;->setOnCheckedChangeListener(Lcom/media/common/ui/widget/FlowRadioGroup$OnCheckedChangeListener;)V

    .line 91
    invoke-virtual {p0, v0, v2}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

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

    .line 177
    iget-object p0, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rg:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/FlowRadioGroup;->check(I)V

    return-void
.end method

.method public getCheckedId()I
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rg:Lcom/media/common/ui/widget/FlowRadioGroup;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/FlowRadioGroup;->getCheckedRadioButtonId()I

    move-result p0

    return p0
.end method

.method public onCheckedChanged(Lcom/media/common/ui/widget/FlowRadioGroup;I)V
    .locals 3

    .line 98
    invoke-direct {p0}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->isRTL()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 99
    sget v0, Lcom/yftech/libradio/R$id;->rb_fm:I

    if-ne p2, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->v_selected:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 101
    :cond_0
    sget v0, Lcom/yftech/libradio/R$id;->rb_am:I

    if-ne p2, v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->v_selected:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->translationOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 104
    :cond_1
    invoke-static {}, Lcom/yftech/libradio/Utils;->isRadioDABPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/yftech/libradio/Utils;->isFMAndAMPresent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->v_selected:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->v_selected:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->translationOffset:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 113
    :cond_3
    sget v0, Lcom/yftech/libradio/R$id;->rb_fm:I

    if-ne p2, v0, :cond_4

    .line 114
    iget-object v0, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->v_selected:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 115
    :cond_4
    sget v0, Lcom/yftech/libradio/R$id;->rb_am:I

    if-ne p2, v0, :cond_5

    .line 116
    iget-object v0, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->v_selected:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->translationOffset:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 118
    :cond_5
    invoke-static {}, Lcom/yftech/libradio/Utils;->isRadioDABPresent()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/yftech/libradio/Utils;->isFMAndAMPresent()Z

    move-result v0

    if-nez v0, :cond_6

    .line 120
    iget-object v0, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->v_selected:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 122
    :cond_6
    iget-object v0, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->v_selected:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->translationOffset:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$font;->roboto_regular:I

    invoke-static {v0, v1}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/yftech/libradio/R$font;->roboto_medium:I

    invoke-static {v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 131
    sget v2, Lcom/yftech/libradio/R$id;->rb_fm:I

    if-ne p2, v2, :cond_9

    .line 132
    iget-object v2, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_fm:Landroid/widget/RadioButton;

    if-eqz v2, :cond_7

    .line 133
    iget-object v2, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_fm:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    :cond_7
    iget-object v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_am:Landroid/widget/RadioButton;

    if-eqz v1, :cond_8

    .line 136
    iget-object v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_am:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 138
    :cond_8
    iget-object v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_dab:Landroid/widget/RadioButton;

    if-eqz v1, :cond_f

    .line 139
    iget-object v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_dab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 141
    :cond_9
    sget v2, Lcom/yftech/libradio/R$id;->rb_am:I

    if-ne p2, v2, :cond_c

    .line 142
    iget-object v2, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_fm:Landroid/widget/RadioButton;

    if-eqz v2, :cond_a

    .line 143
    iget-object v2, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_fm:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 145
    :cond_a
    iget-object v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_am:Landroid/widget/RadioButton;

    if-eqz v1, :cond_b

    .line 146
    iget-object v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_am:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 148
    :cond_b
    iget-object v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_dab:Landroid/widget/RadioButton;

    if-eqz v1, :cond_f

    .line 149
    iget-object v1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_dab:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 151
    :cond_c
    sget v2, Lcom/yftech/libradio/R$id;->rb_dab:I

    if-ne p2, v2, :cond_f

    .line 152
    iget-object v2, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_fm:Landroid/widget/RadioButton;

    if-eqz v2, :cond_d

    .line 153
    iget-object v2, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_fm:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 155
    :cond_d
    iget-object v2, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_am:Landroid/widget/RadioButton;

    if-eqz v2, :cond_e

    .line 156
    iget-object v2, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_am:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 158
    :cond_e
    iget-object v0, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_dab:Landroid/widget/RadioButton;

    if-eqz v0, :cond_f

    .line 159
    iget-object v0, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->rb_dab:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    :cond_f
    :goto_1
    iget-object v0, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->onCheckChangeListener:Lcom/yftech/libradio/widget/RadioDabChannelSwitch$OnCheckChangeListener;

    if-eqz v0, :cond_10

    .line 164
    iget-object p0, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->onCheckChangeListener:Lcom/yftech/libradio/widget/RadioDabChannelSwitch$OnCheckChangeListener;

    invoke-interface {p0, p1, p2}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch$OnCheckChangeListener;->onCheckChange(Lcom/media/common/ui/widget/FlowRadioGroup;I)V

    :cond_10
    return-void
.end method

.method public setOnCheckChangeListener(Lcom/yftech/libradio/widget/RadioDabChannelSwitch$OnCheckChangeListener;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->onCheckChangeListener:Lcom/yftech/libradio/widget/RadioDabChannelSwitch$OnCheckChangeListener;

    return-void
.end method
