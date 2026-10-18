.class public Lcom/yftech/libradio/RadioMainActivity;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;
.source "RadioMainActivity.java"

# interfaces
.implements Lcom/yftech/libradio/widget/RadioDabChannelSwitch$OnCheckChangeListener;


# instance fields
.field private final ACTION_SOURCE_WINDOW_START:Ljava/lang/String;

.field private amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

.field private currentFragment:Landroidx/fragment/app/Fragment;

.field private dabMainFragment:Lcom/yftech/libradio/dabui/DabMainFragment;

.field private mSwRadio:Lcom/yftech/libradio/widget/RadioDabChannelSwitch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;-><init>()V

    const-string v0, "radio_window_start"

    .line 238
    iput-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->ACTION_SOURCE_WINDOW_START:Ljava/lang/String;

    return-void
.end method

.method private showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-eq p1, v0, :cond_5

    .line 137
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/yftech/libradio/RadioMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-nez v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/yftech/libradio/RadioMainActivity;->amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/yftech/libradio/RadioMainActivity;->dabMainFragment:Lcom/yftech/libradio/dabui/DabMainFragment;

    iput-object v1, p0, Lcom/yftech/libradio/RadioMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/yftech/libradio/RadioMainActivity;->dabMainFragment:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/yftech/libradio/RadioMainActivity;->amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

    iput-object v1, p0, Lcom/yftech/libradio/RadioMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 144
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFragment: showFragment get currentFragment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/libradio/RadioMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/yftech/libradio/RadioMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/yftech/libradio/RadioMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 149
    :cond_3
    iput-object p1, p0, Lcom/yftech/libradio/RadioMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 150
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-nez p0, :cond_4

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFragment: add:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 152
    sget p0, Lcom/yftech/libradio/R$id;->fragment_Layout:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 154
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFragment: show:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_5
    :goto_1
    return-void
.end method

.method private startAction(Landroid/content/Intent;)V
    .locals 4

    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key.radio.freq"

    const/4 v2, -0x1

    .line 102
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " freq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v1, "com.yftech.intent.action.start.radio"

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.yftech.intent.action.start.radio.am"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.yftech.intent.action.start.radio.fm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "com.yftech.intent.action.start.dabradio"

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/yftech/libradio/Utils;->isRadioDABPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->mSwRadio:Lcom/yftech/libradio/widget/RadioDabChannelSwitch;

    sget v1, Lcom/yftech/libradio/R$id;->rb_dab:I

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->check(I)V

    .line 114
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->dabMainFragment:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-direct {p0, v0}, Lcom/yftech/libradio/RadioMainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 115
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainActivity;->dabMainFragment:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->startAction(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 118
    :cond_1
    invoke-static {}, Lcom/yftech/libradio/Utils;->getAudioSourceListener()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.yftech.media.radio.dab.manager.RadioDabAudioManager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/yftech/libradio/Utils;->isRadioDABPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->mSwRadio:Lcom/yftech/libradio/widget/RadioDabChannelSwitch;

    sget v1, Lcom/yftech/libradio/R$id;->rb_dab:I

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->check(I)V

    .line 120
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->dabMainFragment:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-direct {p0, v0}, Lcom/yftech/libradio/RadioMainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 121
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainActivity;->dabMainFragment:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->startAction(Landroid/content/Intent;)V

    goto :goto_2

    .line 122
    :cond_2
    invoke-static {}, Lcom/yftech/libradio/Utils;->isRadioDABPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/yftech/libradio/Utils;->isFMAndAMPresent()Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->mSwRadio:Lcom/yftech/libradio/widget/RadioDabChannelSwitch;

    sget v1, Lcom/yftech/libradio/R$id;->rb_dab:I

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->check(I)V

    .line 125
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->dabMainFragment:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-direct {p0, v0}, Lcom/yftech/libradio/RadioMainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 126
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainActivity;->dabMainFragment:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->startAction(Landroid/content/Intent;)V

    goto :goto_2

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->mSwRadio:Lcom/yftech/libradio/widget/RadioDabChannelSwitch;

    sget v1, Lcom/yftech/libradio/R$id;->rb_fm:I

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->check(I)V

    .line 129
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-direct {p0, v0}, Lcom/yftech/libradio/RadioMainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 130
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainActivity;->amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->startAction(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    :goto_0
    const-string v1, "com.yftech.intent.action.start.radio.am"

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 106
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->mSwRadio:Lcom/yftech/libradio/widget/RadioDabChannelSwitch;

    sget v1, Lcom/yftech/libradio/R$id;->rb_am:I

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->check(I)V

    goto :goto_1

    :cond_5
    const-string v1, "com.yftech.intent.action.start.radio.fm"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->mSwRadio:Lcom/yftech/libradio/widget/RadioDabChannelSwitch;

    sget v1, Lcom/yftech/libradio/R$id;->rb_fm:I

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->check(I)V

    .line 110
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-direct {p0, v0}, Lcom/yftech/libradio/RadioMainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 111
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainActivity;->amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/RadioMainFragment;->startAction(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCheckedId()I
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainActivity;->mSwRadio:Lcom/yftech/libradio/widget/RadioDabChannelSwitch;

    invoke-virtual {p0}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->getCheckedId()I

    move-result p0

    return p0
.end method

.method public isCheckedDab()Z
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainActivity;->getCheckedId()I

    move-result p0

    .line 166
    sget v0, Lcom/yftech/libradio/R$id;->rb_dab:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCheckChange(Lcom/media/common/ui/widget/FlowRadioGroup;I)V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioMainActivity->onCheckChange->checkedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 80
    sget v0, Lcom/yftech/libradio/R$id;->rb_fm:I

    if-ne v0, p2, :cond_1

    .line 81
    sget v0, Lcom/yftech/libradio/R$id;->rb_fm:I

    invoke-virtual {p1, v0}, Lcom/media/common/ui/widget/FlowRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainActivity;->amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-direct {p0, p1}, Lcom/yftech/libradio/RadioMainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 85
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainActivity;->amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/RadioMainFragment;->onCheckChange(I)V

    goto :goto_0

    .line 86
    :cond_1
    sget v0, Lcom/yftech/libradio/R$id;->rb_am:I

    if-ne v0, p2, :cond_3

    .line 87
    sget v0, Lcom/yftech/libradio/R$id;->rb_am:I

    invoke-virtual {p1, v0}, Lcom/media/common/ui/widget/FlowRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainActivity;->amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-direct {p0, p1}, Lcom/yftech/libradio/RadioMainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 91
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainActivity;->amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/RadioMainFragment;->onCheckChange(I)V

    goto :goto_0

    .line 92
    :cond_3
    sget v0, Lcom/yftech/libradio/R$id;->rb_dab:I

    if-ne v0, p2, :cond_5

    .line 93
    sget p2, Lcom/yftech/libradio/R$id;->rb_dab:I

    invoke-virtual {p1, p2}, Lcom/media/common/ui/widget/FlowRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 96
    :cond_4
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainActivity;->dabMainFragment:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-direct {p0, p1}, Lcom/yftech/libradio/RadioMainActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged:event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, ""

    .line 197
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "key.radio.freq"

    const/4 v0, -0x1

    .line 198
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "onCreate()"

    .line 39
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/yftech/libradio/Utils;->isRadioDABPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget v0, Lcom/yftech/libradio/R$layout;->activity_main_radio_dab:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/RadioMainActivity;->setContentView(I)V

    goto :goto_0

    .line 43
    :cond_0
    sget v0, Lcom/yftech/libradio/R$layout;->activity_main_radio:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/RadioMainActivity;->setContentView(I)V

    .line 45
    :goto_0
    sget v0, Lcom/yftech/libradio/R$id;->sw_am_fm_dab:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/RadioMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;

    iput-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->mSwRadio:Lcom/yftech/libradio/widget/RadioDabChannelSwitch;

    .line 46
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->mSwRadio:Lcom/yftech/libradio/widget/RadioDabChannelSwitch;

    invoke-virtual {v0, p0}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->setOnCheckChangeListener(Lcom/yftech/libradio/widget/RadioDabChannelSwitch$OnCheckChangeListener;)V

    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/dabui/DabMainFragment;

    iput-object p1, p0, Lcom/yftech/libradio/RadioMainActivity;->dabMainFragment:Lcom/yftech/libradio/dabui/DabMainFragment;

    .line 49
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/RadioMainFragment;

    iput-object p1, p0, Lcom/yftech/libradio/RadioMainActivity;->amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate(),dabMainFragment="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->dabMainFragment:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate(),amAndFmFragment="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainActivity;->dabMainFragment:Lcom/yftech/libradio/dabui/DabMainFragment;

    if-nez p1, :cond_2

    .line 54
    new-instance p1, Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-direct {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/RadioMainActivity;->dabMainFragment:Lcom/yftech/libradio/dabui/DabMainFragment;

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainActivity;->amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

    if-nez p1, :cond_3

    .line 57
    new-instance p1, Lcom/yftech/libradio/RadioMainFragment;

    invoke-direct {p1}, Lcom/yftech/libradio/RadioMainFragment;-><init>()V

    iput-object p1, p0, Lcom/yftech/libradio/RadioMainActivity;->amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yftech/libradio/RadioMainActivity;->startAction(Landroid/content/Intent;)V

    .line 60
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onDestroy()V

    .line 73
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    const-string p0, "onDestroy()"

    .line 74
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onMediaSourceWindowChanged(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMediaSourceWindowChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "radio_window_start"

    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "onMediaSourceWindowChanged=finish radioActivity"

    .line 244
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioMainActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 247
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "onNewIntent()"

    .line 66
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/yftech/libradio/RadioMainActivity;->startAction(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 233
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onResume()V

    .line 234
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    const-string v0, "radio_window_start"

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 187
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p0, "onSaveInstanceState"

    .line 188
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public switchFmOrAm(I)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/yftech/libradio/RadioMainActivity;->amAndFmFragment:Lcom/yftech/libradio/RadioMainFragment;

    iget-object v1, p0, Lcom/yftech/libradio/RadioMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-eq v0, v1, :cond_0

    const-string p0, "switchFmOrAm but not on radio fragment -----"

    .line 171
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 175
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainActivity;->mSwRadio:Lcom/yftech/libradio/widget/RadioDabChannelSwitch;

    invoke-virtual {p1}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->getCheckedId()I

    move-result p1

    sget v0, Lcom/yftech/libradio/R$id;->rb_am:I

    if-eq p1, v0, :cond_2

    .line 176
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainActivity;->mSwRadio:Lcom/yftech/libradio/widget/RadioDabChannelSwitch;

    sget p1, Lcom/yftech/libradio/R$id;->rb_am:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->check(I)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 179
    iget-object p1, p0, Lcom/yftech/libradio/RadioMainActivity;->mSwRadio:Lcom/yftech/libradio/widget/RadioDabChannelSwitch;

    invoke-virtual {p1}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->getCheckedId()I

    move-result p1

    sget v0, Lcom/yftech/libradio/R$id;->rb_fm:I

    if-eq p1, v0, :cond_2

    .line 180
    iget-object p0, p0, Lcom/yftech/libradio/RadioMainActivity;->mSwRadio:Lcom/yftech/libradio/widget/RadioDabChannelSwitch;

    sget p1, Lcom/yftech/libradio/R$id;->rb_fm:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/widget/RadioDabChannelSwitch;->check(I)V

    :cond_2
    :goto_0
    return-void
.end method
